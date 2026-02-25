namespace Servers;

using AutoMapper;
using DTOs;
using Entitys;
using Repository;


public class PrudectsService : IPrudectsService
{
    private readonly IProductRepository _productRepository;
    IMapper _mapper;

    public PrudectsService(IProductRepository productRepository, IMapper mapper)
    {
        _productRepository = productRepository;
        _mapper = mapper;
    }

    public async Task<PageResponseDTO<ProductDTO>> GetProducts(string? description, int? minPrice, int? maxprice, int[]? categoriesId,
            int? limit, string? orderby, int? offset)
    {
        (List<Product> items, int totalCount )= await _productRepository.GetProducts(description, minPrice, maxprice, categoriesId, limit, orderby, offset);

        List<ProductDTO> itemsDTO=_mapper.Map<List<Product>, List<ProductDTO>>(items);
        PageResponseDTO < ProductDTO > responseDTO = new PageResponseDTO<ProductDTO>()
        {
            Data = itemsDTO,
            TotalItems=totalCount,
            CurrentPage= (offset ?? 1),
            PageSize = (limit ?? 20),
            HasPreviousPage = ((offset ?? 1) > 1),
            HasNextPage = ((offset ?? 1) * (limit ?? 20) < totalCount)
        };
        return responseDTO;
    }
    public async Task DeleteProduct(int id)
    {
        await _productRepository.DeleteProduct(id);
    }
    public async Task<ProductDTO> GetProductById(int id)
    {
        var product = await _productRepository.GetProductById(id);
        return _mapper.Map<Product, ProductDTO>(product);
    }

}
