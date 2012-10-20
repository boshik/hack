using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HotelService.EanService;

namespace HotelService
{
    public class HotelSearch
    {
        public List<Entity.Hotel> GetAvaliableHotels(string city, int numberOfAdults, DateTime arrivalDate, DateTime departureDate)
        {
            return GetHotelsData(city, numberOfAdults, arrivalDate, departureDate); 
        }

        private List<Entity.Hotel> GetHotelsData(string city, int numberOfAdults, DateTime arrivalDate, DateTime departureDate)
        {
            var result = new List<Entity.Hotel>();
            var hotelServicesClient = new HotelServicesClient();

            var request = new HotelListRequest();
            request.arrivalDate = arrivalDate.ToString("MM/dd/yyyy");
            request.departureDate = departureDate.ToString("MM/dd/yyyy");
            request.city = city;
            request.cid = 55505;
            request.apiKey = "qb8es7zetcad5s5atuadxt3f";
            var room = new Room();
            room.numberOfAdults = numberOfAdults;
            request.RoomGroup = new[] { room };

            hotelServicesClient.Open();

            var hotelListResponse = hotelServicesClient.getList(request);

            var rooms = new List<HotelRoomResponse>();
            foreach (HotelSummary hotelSummary in hotelListResponse.HotelList.HotelSummary)
            {
                var roomRequest = new HotelRoomAvailabilityRequest();
                roomRequest.cid = 55505;
                roomRequest.apiKey = "qb8es7zetcad5s5atuadxt3f";
                roomRequest.hotelId = hotelSummary.hotelId;
                roomRequest.arrivalDate = arrivalDate.ToString("MM/dd/yyyy");
                roomRequest.departureDate = departureDate.ToString("MM/dd/yyyy");
                roomRequest.RoomGroup = new[] { room };
                var hotelRoomResponse = hotelServicesClient.getAvailability(roomRequest);
                foreach (HotelRoomResponse roomResponse in hotelRoomResponse.HotelRoomResponse)
                {
                    result.Add(new Entity.Hotel(hotelSummary.name,
                                                roomResponse.RateInfo.ChargeableRateInfo.commissionableUsdTotal,
                                                roomResponse.RateInfo.ChargeableRateInfo.currencyCode,
                                                @"http://media.expedia.com/" + hotelSummary.thumbNailUrl, city, roomResponse.rateDescription));
                }
            }
            return result;
        }
    }
}
