using System;
using System.Collections.Generic;

namespace EventService
{
   public class Event
   {
      public string Title;
      public string Description;
      public DateTime? StartTime;
      public DateTime? StopTime;
      public string Price;
      public string VenueName;
      public string VenueAddress;
      public List<Performer> Performers;
      public ImageLink Image;
      public List<string> Categories;

      public Event()
      {
         Performers = new List<Performer>();
         Categories = new List<string>();
      }
   }

   public class Performer
   {
      public string Name;
      public string Bio;
   }

   public class ImageLink
   {
      public int Width = 128;
      public int Height = 128;
      public string Link;
   }
}
