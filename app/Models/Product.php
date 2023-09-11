<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\MediaLibrary\MediaCollections\Models\Media;
use function foo\func;

/**
 * @method static select(string $string)
 */
class Product extends Model implements HasMedia
{
    use InteractsWithMedia;
    protected $guarded = [];

    /**
     * The "booting" method of the model.
     *
     * @return void
     */
    protected static function boot()
    {
        parent::boot();
        static::creating(function ($product){
            $product->slug = str_slug($product->title);

        });

    }

    public function category()
    {
        return $this->hasOne(Category::class);
    }
}
