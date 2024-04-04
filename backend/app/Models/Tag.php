<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
class Tag extends Model
{
    use HasFactory;
    protected $table = 'tag';
    protected $primaryKey = 'id';
    protected $fillable = ['name'];

    public function tagInJob(): BelongsTo
    {
        return $this->belongsTo(TagInJob::class, 'tag_id');
    }

    
}
