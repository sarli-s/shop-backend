using AutoMapper;
using DTOs;
using Entitys;

namespace WebAPIShop
{
    public class AutoMapping: Profile
    {
        public AutoMapping() 
        {
            CreateMap<User, UserDTO>().ReverseMap();
            CreateMap<User, LoginUserDTO>().ReverseMap();
            CreateMap<Order, OrderDTO>().ReverseMap();
            CreateMap<OrderItem, OrderItemDTO>()
                .ForCtorParam("ProductName",
               opt => opt.MapFrom(src => src.Product.ProductName))
                .ReverseMap();


            CreateMap<Product, ProductDTO>().ReverseMap();
            CreateMap<Category, CategoryDTO>().ReverseMap();
        }
    }
}
