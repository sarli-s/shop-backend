using DTOs;
using Microsoft.AspNetCore.Mvc;
using Servers;

namespace WebAPIShop.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class SearchController : ControllerBase
    {
        private readonly ISearchService _searchService;

        public SearchController(ISearchService searchService)
        {
            _searchService = searchService;
        }

        /// <summary>Search products semantically using natural language.</summary>
        [HttpGet]
        public async Task<ActionResult<SemanticSearchResponse>> Search([FromQuery] string query, [FromQuery] int topK = 5)
        {
            if (string.IsNullOrWhiteSpace(query))
                return BadRequest("query is required");

            var result = await _searchService.SearchAsync(new SemanticSearchRequest(query, topK));
            return Ok(result);
        }

        /// <summary>Re-seed the AI vector store with the current product catalog.</summary>
        [HttpPost("seed")]
        public async Task<IActionResult> Seed()
        {
            await _searchService.SeedAsync();
            return Ok();
        }
    }
}
