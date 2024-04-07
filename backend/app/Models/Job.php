<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
class Job extends Model
{
    use HasFactory;
    protected $table = 'job';
    protected $primaryKey = 'id';
    protected $fillable = [
        'title',
        'description',
        'location',
        'level_id',
        'authorId',
        'location_id',
        'id_salary_range',
        'experience_id',
        'active',
        'banner',
        'prioritized'
    ];


    public function tagInJob(): BelongsTo
    {
        return $this->belongsTo(TagInJob::class, 'job_id');
    }
}
