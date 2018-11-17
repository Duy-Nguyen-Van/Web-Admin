<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'txtEmail' => 'required|unique:users,email',
            'txtPass' => 'required',
            'txtRePass' => 'required|same:txtPass',
        ];
    }

    public function messages (){
        return [
            'txtEmail.required' => 'Xin hãy nhập tài khoản email',
            'txtEmail.unique' => 'Tài khoản email đã tồn tại',
            'txtPass.required' => 'Không được để trống mật khẩu',
            'txtRePass.required' => 'Không được để trống re-mật khẩu',
            'txtRePass.same' => 'Mật khẩu không trùng khớp , xin hãy kiểm tra lại',
        ];
    }
}
