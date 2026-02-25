using DTOs;
using Entitys;
using Microsoft.AspNetCore.Mvc;
using Repository;
using Servers;
using System.Text.Json;


// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WebAPIShop.Controllers
{


    [Route("api/[controller]")]
    [ApiController]
    public class ProductsController : ControllerBase
    {

        private readonly IPrudectsService _prudectsService;
        
        public ProductsController(IPrudectsService prudectsService)
        {
            _prudectsService = prudectsService;
        }

        [HttpGet]
        public async Task<ActionResult<List<ProductDTO>>> Get(string? description, int? minPrice, int? maxPrice, [FromQuery] int[]? categoriesId,
            int? limit, string? orderby, int offset=1) 
        {

            PageResponseDTO <ProductDTO> metaData= await _prudectsService.GetProducts(description, minPrice,maxPrice,categoriesId,limit,orderby,offset);
            if (metaData != null)
            {
                return Ok(metaData);
            }
            return NoContent();
        }
        [HttpGet("{id}")]
        public async Task<ActionResult<ProductDTO>> GetById(int id)
        {
            var product = await _prudectsService.GetProductById(id);
            if (product == null) return NotFound();
            return Ok(product);
        }
        [HttpDelete("{id}")]
        public async Task<ActionResult> Delete(int id)
        {
            // בדיקה שהמוצר קיים לפני מחיקה
            var product = await _prudectsService.GetProductById(id);
            if (product == null)
            {
                return NotFound();
            }

            await _prudectsService.DeleteProduct(id);
            return NoContent(); // מחזיר קוד 204 (הצליח אבל אין תוכן להחזיר)
        }


    }
}
