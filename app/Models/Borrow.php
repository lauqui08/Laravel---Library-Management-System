<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Borrow extends Model
{
    use HasFactory;

    protected $table='loan';

    protected $fillable = [
        'id',
        'book_id',
        'member_id',
        'loan_date',
    ];

    public $timestamps = false;

}
