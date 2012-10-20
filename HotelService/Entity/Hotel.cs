namespace HotelService.Entity
{
    public class Hotel
    {
        public string Name { get; private set; }
        public float Cost { get; private set; }
        public string Currency { get; private set; }
        public string ImageUrl { get; private set; }
        public string City { get; private set; }
        public string Description { get; private set; }

        public Hotel(string name, float cost, string currency, string imageUrl, string city, string description)
        {
            Name = name;
            Cost = cost;
            Currency = currency;
            ImageUrl = imageUrl;
            City = city;
            Description = description;
        }
    }
}