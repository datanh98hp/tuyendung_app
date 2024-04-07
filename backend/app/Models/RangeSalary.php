<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
class RangeSalary extends Model
{
    use HasFactory;
    protected $table = 'range_salary';
    protected $primaryKey = 'id';
    protected $fillable = ['title'];

    public function jobs(): HasMany
    {
        return $this->hasMany(Job::class, 'id_salary_range');
    }
}
