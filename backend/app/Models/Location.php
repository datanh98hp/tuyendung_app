<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
class Location extends Model
{
    use HasFactory;

    protected $table = 'location';
    protected $primaryKey = 'id';
    protected $fillable = ['tilte','code'];

    public function jobs(): HasMany
    {
        return $this->hasMany(Job::class, 'location_id');
    }
}
