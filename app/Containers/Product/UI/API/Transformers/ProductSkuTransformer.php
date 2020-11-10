<?php

namespace App\Containers\Product\UI\API\Transformers;

use App\Containers\Media\UI\API\Transformers\MediaTransformer;
use App\Containers\Product\Models\ProductSku;
use App\Ship\Parents\Transformers\Transformer;

class ProductSkuTransformer extends Transformer
{
    /**
     * @var  array
     */
    protected $defaultIncludes = [
        'stock',
        'media',
        'product'
    ];

    /**
     * @var  array
     */
    protected $availableIncludes = [

    ];

    /**
     * @param ProductSku $entity
     *
     * @return array
     */
    public function transform(ProductSku $entity)
    {
        $price = explode('.', $entity->price);
        $response = [
//            'object' => 'ProductSku',
            'id' => $entity->getHashedKey(),
            'product_id' => $entity->getHashedKey('product_id'),
            'attr_key' => $entity->attr_key,
            'media_id' => $entity->getHashedKey('media_id'),
            'price' => [
                'price' => $entity->price,
                'int' => $price[0],
                'point' => $price[1],
            ],
            'cost_price' => $entity->cost_price,
            'sold_num' => $entity->sold_num,
            'code' => $entity->code,
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

    public function includeMedia(ProductSku $product)
    {
        return $this->item($product->media, new MediaTransformer());
    }

    public function includeStock(ProductSku $product)
    {
        return $this->item($product->stock, new ProductSkuStockTransformer());
    }

    public function includeProduct(ProductSku $product)
    {
        return $this->item($product->product, new ProductTransformer());
    }

}
