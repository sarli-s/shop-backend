namespace Repository
{
    public class ChatRepository : IChatRepository
    {
        private readonly dbSHOPContext _db;

        public ChatRepository(dbSHOPContext db)
        {
            _db = db;
        }
    }
}
