<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FinePayment extends Model
{
    use HasFactory;

    protected $table = 'fine_payment';

    protected $fillable = [
        'invoice_number', 'loan_id', 'member_id', 'payment_date', 'payment_amount'
    ];

    public $timestams = false;
}
