using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Xml.Linq;

namespace EventService
{
   public class EventfulService
   {
      private const string DateMask = "yyyyMMdd00";
      private const string EventfulApiKey = "fNTcD94ZqcVGnRsC";
      private const string DefaultSearchString =
         "http://api.eventful.com/rest/events/search?app_key=" + EventfulApiKey +
         "&sort_order=popularity&page_size=100&include=categories,price&category=music,festivals_parades,art,attractions,sports";

      public List<Event> Search(string location, DateTime startDate)
      {
         return Search(location, startDate, startDate);
      }

      public List<Event> Search(string location, DateTime startDate, DateTime endDate)
      {
         var myWebClient = new WebClient();
         var uri =
            new Uri(string.Format(DefaultSearchString + "&location={0}&date={1}", location,
                                  ConvertDatesRange(startDate, endDate)));
         var result = myWebClient.DownloadString(uri);
         var responseDoc = XDocument.Parse(result);

         return ParseEvents(responseDoc);
      }

      private static string ConvertDatesRange(DateTime startDate, DateTime endDate)
      {
         var convertedDateRange = string.Format("{0}-{1}", startDate.ToString(DateMask), endDate.ToString(DateMask));
         return convertedDateRange;
      }

      private static List<Event> ParseEvents(XContainer response)
      {
         var res = response.Descendants(XName.Get("events")).First().Descendants("event").ToList();
         return res.Select(ParseEvent).ToList();
      }

      private static Event ParseEvent(XElement xEvent)
      {
         var eventObj = new Event
         {
            Title = ParseStringElement(xEvent.Element("title")),
            Description = ParseStringElement(xEvent.Element("description")),
            StartTime = ParseDateTimeElement(xEvent.Element("start_time")),
            StopTime = ParseDateTimeElement(xEvent.Element("stop_time")),
            Price = ParseStringElement(xEvent.Element("price")),
            VenueAddress = ParseMultipleStringsIntoCommaSeparatedString(new[] { xEvent.Element("region_name"), xEvent.Element("city_name"), xEvent.Element("venue_address") })
         };

         var venueDisplay = ParseStringElement(xEvent.Element("venue_display"));
         if (venueDisplay == "1")
         {
            eventObj.VenueName = ParseStringElement(xEvent.Element("venue_Name"));
         }

         var element = xEvent.Element("performers");
         if (element != null)
            foreach (var performer in element.Elements("performer").Select(xElement => new Performer
            {
               Name = ParseStringElement(xElement.Element("name")),
               Bio = ParseStringElement(xElement.Element("short_bio"))
            }))
            {
               eventObj.Performers.Add(performer);
            }

         var imageElement = xEvent.Element("image");
         if (imageElement != null && imageElement.Element("medium") != null)
         {
            var mediumImageElement = imageElement.Element("medium");
            if (mediumImageElement != null)
               eventObj.Image = new ImageLink { Link = ParseStringElement(mediumImageElement.Element("url")) };
         }

         var categoriesElement = xEvent.Element("categories");
         if (categoriesElement != null)
            foreach (var xElement in categoriesElement.Elements("category"))
            {
               eventObj.Categories.Add(ParseStringElement(xElement.Element("name")));
            }

         return eventObj;
      }

      #region ParsingHelpers

      private static DateTime? ParseDateTimeElement(XElement dateTimeElement)
      {
         if (dateTimeElement != null && !string.IsNullOrEmpty(dateTimeElement.Value) && DateTime.Parse(dateTimeElement.Value) != new DateTime(1, 1, 1))
            return DateTime.Parse(ReplaceXmlSymbols(dateTimeElement.Value));
         return null;
      }

      private static string ParseStringElement(XElement stringElement)
      {
         return (stringElement == null ? string.Empty : ReplaceXmlSymbols(stringElement.Value));
      }

      private static string ParseMultipleStringsIntoCommaSeparatedString(IEnumerable<XElement> stringElements)
      {
         var stringList = stringElements.Select(ParseStringElement).Where(parsedElement => !string.IsNullOrEmpty(parsedElement)).ToList();

         return string.Join(", ", stringList);
      }

      private static string ReplaceXmlSymbols(string input)
      {
         return input.Replace("&amp;", "&").Replace("&lt;", "<").Replace("&gt;", ">").Replace("&quot;", "\"").Replace("&apos;", "'").Replace("&pound;", "GBP").Replace("&euro;", "EUR");
      }

      #endregion
   }
}

