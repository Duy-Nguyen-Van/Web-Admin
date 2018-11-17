<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Stripe, Mailgun, SparkPost and others. This file provides a sane
    | default location for this type of information, allowing packages
    | to have a conventional place to find your various credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
    ],

    'ses' => [
        'key' => env('SES_KEY'),
        'secret' => env('SES_SECRET'),
        'region' => 'us-east-1',
    ],

    'sparkpost' => [
        'secret' => env('SPARKPOST_SECRET'),
    ],

    'stripe' => [
        'model' => App\User::class,
        'key' => env('STRIPE_KEY'),
        'secret' => env('STRIPE_SECRET'),
    ],


    // 'facebook' => [
    //     'client_id'     => '394355544350498',
    //     'client_secret' => '24b3604c6ba9becca366c5a589a649ff',
    //     'redirect'      => 'http://localhost:8888/auth/facebook/callback',
    // ],

    // 'google' => [
    //     'client_id'     => '701412635034-qghmpbu9hko6b6g9nro7la854u1bdn82.apps.googleusercontent.com',
    //     'client_secret' => '4rXqUV6gWkXbcOp-9U7iQTIT',
    //     'redirect'      => 'https://localhost:8888/auth/google/callback',
    // ],
];
