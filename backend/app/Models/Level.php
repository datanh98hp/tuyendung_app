<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
class Level extends Model
{
    use HasFactory;


    protected $table = 'level';
    protected $primaryKey = 'id';
    protected $fillable = ['level_name'];

    public function jobs(): HasMany
    {
        return $this->hasMany(Job::class,'level_id');
    }

}
