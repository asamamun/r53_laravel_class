<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Support\Facades\Auth;

class StoreProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return Auth::check();
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    {
        return [
            'category_id'=>'required',
            'subcategory_id'=>'required',
            'name' => 'required|max:255',
            'sku' => 'required|unique:products,sku',
            'details' => 'required|min:30',
            'price' => 'required',
            'quantity' => 'required',
            'status' => 'required',
            'hot' => 'required',
            'new' => 'required',
        ];
    }
}
