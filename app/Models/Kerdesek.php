<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use App\Models\Kerdoiv;
use App\Models\Valaszok;

class Kerdesek extends Model
{
    use HasFactory;

    protected $table = 'kerdeseks';

    protected $primaryKey = 'kerdes_id';
    
    protected $fillable = ['kerdoiv_id','kerdes_szovege'];

    public $timestamps = false;

    public function valaszok (): HasMany
    {
        return $this->hasMany(Valaszok::class, 'kerdes_id', 'kerdes_id');
    }

    public function kerdoiv ():BelongsTo
    {
        return $this->belongsTo(Kerdoiv::class, 'kerdoiv_id', 'kerdoiv_id');
    }

}
