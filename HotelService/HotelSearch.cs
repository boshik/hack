using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using HotelService.EanService;

namespace HotelService
{
    public class HotelSearch
    {
        public List<Hotel> GetAvaliableHotels(string city, int numberOfAdults, DateTime arrivalDate, DateTime departureDate)
        {
            var hotelList = GetHotelsData(city, numberOfAdults, arrivalDate, departureDate);
            return null;
        }

        private HotelList GetHotelsData(string city, int numberOfAdults, DateTime arrivalDate, DateTime departureDate)
        {
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
            return hotelListResponse.HotelList;
        }
    }
}
