<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    use HasFactory;

    protected $table='book';

    protected $fillable = [
        'id',
        'isbn',
        'title',
        'category_id',
        'publication_date',
        'book_description',
        'copies_owned'
    ];

    public $timestamps = false;
}
