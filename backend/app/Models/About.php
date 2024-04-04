<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
class About extends Model
{
  
    use HasFactory;

    protected $table = 'about';
    protected $primaryKey = 'id';
    protected $fillable = [
        'user_id',
        'location_headquarters',
        'hotline',
        'hr_name',
        'phone',
        'logo',
        'zalo_profile',
        'facebook_profile',
        'meta_tag',
    ];
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class, 'user_id');
    }


}
