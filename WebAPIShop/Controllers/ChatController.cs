using DTOs;
using Microsoft.AspNetCore.Mvc;
using Servers;


namespace WebAPIShop.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class ChatController : ControllerBase
    {
        private readonly IChatService _chatService;

        public ChatController(IChatService chatService)
        {
            _chatService = chatService;
        }

        [HttpPost]
        public async Task<IActionResult> Post([FromBody] ChatRequest req)
        {
            try
            {
                var data = await _chatService.SendMessageAsync(req);
                return Ok(data);
            }
            catch (Exception)
            {
                return StatusCode(500, "AI service unavailable");
            }
        }
    }
}
