<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use App\Models\Kerdesek;
class Kerdoiv extends Model
{
    use HasFactory;

    protected $table = 'kerdoivs';

    protected $primaryKey = 'kerdoiv_id';
    
    protected $fillable = ['kerdoiv_nev'];

    public $timestamps = false;

    public function kerdesek (): HasMany
    {
        return $this->hasMany(Kerdesek::class, 'kerdoiv_id', 'kerdoiv_id');
    }
    
}
