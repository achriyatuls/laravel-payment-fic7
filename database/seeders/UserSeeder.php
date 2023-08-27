<?php

namespace Database\Seeders;

use Illuminate\Support\Facades\Hash;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        User::factory(20)->create();
        User::create([
            'name'=>'AchriyatulS',
            'email'=>'achriyatuls0101@gmail.com',
            'email_verified_at'=>now(),
            'role'=>'admin',
            'phone'=>'081271044444',
            'bio'=>'CEO Sadewa CNC',
            'password'=>Hash::make('123456'),
        ]);

        User::create([
            'name'=>'Kapten Ibnu Budir',
            'email'=>'ibnubudir@gmail.com',
            'email_verified_at'=>now(),
            'role'=>'superadmin',
            'phone'=>'08125252497',
            'bio'=>'Owner Sadewa CNC',
            'password'=>Hash::make('jklnm'),
        ]);
    }
}
