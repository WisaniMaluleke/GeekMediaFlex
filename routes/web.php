<?php

use App\Http\Controllers\DashboardController;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

Route::get('/', function () {
    return Inertia::render('Welcome');
})->name('home');

Route::middleware(['auth', 'verified'])->group(function () {
    Route::get('dashboard', [DashboardController::class, 'dashboard'])->name('dashboard');
    Route::get('videos', [DashboardController::class, 'videos'])->name('videos');
    Route::get('music', [DashboardController::class, 'music'])->name('music');
});


require __DIR__.'/settings.php';
require __DIR__.'/auth.php';
