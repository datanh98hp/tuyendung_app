<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
class Experience extends Model
{
    use HasFactory;
    protected $table = 'experience';
     protected $primaryKey = 'id';
    protected $fillable = ['title'];


    public function jobs(): HasMany
    {
        return $this->hasMany(Job::class,'experience_id');
    }
}
