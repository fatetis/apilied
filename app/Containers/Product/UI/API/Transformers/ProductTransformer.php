<?php

namespace App\Containers\Product\UI\API\Transformers;

use App\Containers\Brand\UI\API\Transformers\BrandTransformer;
use App\Containers\Product\Models\Product;
use App\Ship\Parents\Transformers\Transformer;

class ProductTransformer extends Transformer
{
    /**
     * @var  array
     */
    protected $availableIncludes = [
        'category',
        'brand',
        'attrs',
        'skus',
        'medias',
    ];

    /**
     * @var  array
     */
    protected $defaultIncludes = [

    ];

    /**
     * @param Product $entity
     *
     * @return array
     */
    public function transform(Product $entity)
    {
        $price = explode('.', $entity->price);
        $response = [
//            'object' => 'Product',
            'id' => $entity->getHashedKey(),
            'name' => $entity->name,
            'brand_id' => $entity->brand_id,
            'category_id' => $entity->category_id,
//            'virtual_quantity' => $entity->virtual_quantity,
            'line_price' => $entity->line_price,
            'price' => [
                'price' => $entity->price,
                'int' => $price[0],
                'point' => $price[1],
            ],
            'description' => $entity->description,
            'content' => $entity->content,
            'is_real' => $entity->is_real,
//            'is_audit' => $entity->is_audit,
//            'is_on_sale' => $entity->is_on_sale,
//            'created_id' => $entity->created_id,
            'sort' => $entity->sort,
//            'created_at' => $entity->created_at,
//            'updated_at' => $entity->updated_at,
//            'deleted_at' => $entity->deleted_at,

        ];



        $response = $this->ifAdmin([
            'real_id'    => $entity->id,
            // 'deleted_at' => $entity->deleted_at,
        ], $response);

        return $response;
    }

    public function includeCategory(Product $product)
    {
        return $this->item($product->category, new ProductCategoryTransformer());
    }

    public function includeBrand(Product $product)
    {
        return $this->item($product->brand, new BrandTransformer());
    }

    public function includeAttrs(Product $product)
    {
        return $this->collection($product->attrs, new ProductAttrMapTransformer());
    }

    public function includeSkus(Product $product)
    {
        return $this->collection($product->skus, new ProductSkuTransformer());
    }

    public function includeMedias(Product $product)
    {
        return $this->collection($product->medias, new ProductMediaTransformer());
    }





}
