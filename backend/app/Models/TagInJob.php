<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
class TagInJob extends Model
{
    use HasFactory;

    protected $table = 'tag_in_job';
    protected $primaryKey = 'id';
    protected $fillable = [
        'job_id',
        'tag_id',
    ];
    public function tags(): HasMany
    {
        return $this->hasMany(Tag::class, 'tag_id');
    }
    public function jobs(): HasMany
    {
        return $this->hasMany(Job::class, 'job_id');
    }

}
