<?php

namespace App\Models;

use Attribute;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    use HasFactory;

    protected $table='member';

	/**
	 * @return mixed
	 */
	public function getTable() {
		return $this->table;
	}
	
	/**
	 * @param mixed $table 
	 * @return self
	 */
	public function setTable($table): self {
		$this->table = $table;
		return $this;
	}

    protected $fillable = [
        'id',
        'first_name',
        'last_name',
        'gender',
        'email',
        'contact',
        'member_address',
        'joined_date',
        'active_status_id',
    ];

    public $timestamps = false;


   
}
