using Entitys;

namespace Repository
{
    public interface IOrderRepository
    {
        Task<Order> AddOrder(Order order);
        Task<Order> GetOrderById(int id);
<<<<<<< HEAD
        Task<List<Order>> GetOrders();

=======
        Task<IEnumerable<Order>> GetAllOrders();
        Task<bool> UpdateOrder(Order order);
>>>>>>> 526973d58c7d1c4ea22d9fe9053f1b6e2ee782a7
    }
}