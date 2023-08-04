<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class m_ruas_coordinate extends Model
{
    use HasFactory;
    protected $table = 'ruas_coordinate';
    protected $fillable = [
        'ruas_coordinate',
    ];

    public function m_ruas(){
        return $this->belongsTo(User::class, 'ruas_id','id');
    }
}
