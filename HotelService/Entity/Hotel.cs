namespace HotelService.Entity
{
    public class Hotel
    {
        public string Name { get; private set; }
        public decimal Cost { get; private set; }
        public string Currency { get; private set; }
        public string ImageUrl { get; private set; }

        public Hotel(string name, decimal cost, string currency, string imageUrl)
        {
            Name = name;
            Cost = cost;
            Currency = currency;
            ImageUrl = ImageUrl;
        }
    }
}