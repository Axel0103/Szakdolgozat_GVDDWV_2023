<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use App\Models\Kerdesek;

class Valaszok extends Model
{
    use HasFactory;

    protected $table = 'valaszoks';

    protected $primaryKey = 'valaszok_id';
    
    protected $fillable = ['kerdes_id','valasz','fiatalok','kozepkoruak','idosek','ferfi','no','egyeb'];

    public $timestamps = false;

    public function kerdes() : BelongsTo {
        return $this->belongsTo(Kerdes::class, 'kerdes_id', 'kerdes_id');
    }
}
