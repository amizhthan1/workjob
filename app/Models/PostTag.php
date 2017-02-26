<?php 
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PostTag extends Model  {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'posts_tags';

	/**
	 * The timestamps.
	 *
	 * @var bool
	 */
	public $timestamps = false;

}