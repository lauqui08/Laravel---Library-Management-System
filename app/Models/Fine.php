<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Fine extends Model
{
    use HasFactory;

    protected $fillable = [
                'book_id',
                'loan_id',
                'fine_date',
                'fine_amount',
    ];

    protected $table = 'fine';

    public $timestamps = false;
}
