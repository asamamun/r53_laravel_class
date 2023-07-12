<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Relations\MorphMany;

class Product extends Model
{
    use SoftDeletes; // use the trait
    use HasFactory;
    protected $dates = ['deleted_at']; // mark this column as a date
    protected $fillable = [
        'category_id',
        'subcategory_id',
        'name',
        'sku',
        'details',
        'price',
        'quantity',
        'status',
        'hot',
        'new',
    ];
    protected $casts = [
        'name' => 'string',
        'price' => 'double',        
        ];
    public function getSkuAttribute($value)
    {
        return strtoupper($value);
    }
    public function getPriceAttribute($value)
    {
        return $value . " taka";
    }
    public function getVatAttribute()
    {
        return (float)$this->price * 0.15;
    }
    public function setSkuAttribute($value)
    {
        $this->attributes['sku'] = strtoupper($value);
    }
    public function setPriceAttribute($value)
    {
        $this->attributes['price'] = $value == 0 ? 1 : $value;
    }

    //relations
    public function images()
    {
    return $this->hasMany(Image::class);
    }
    public function category()
    {
        return $this->belongsTo(Category::class);
    }
    public function subcategory()
    {
        return $this->belongsTo(Subcategory::class);
    }

    /**
     * Get all of the product's comments.
     */
    public function comments(): MorphMany
    {
        return $this->morphMany(Comment::class, 'commentable');
    }
}
