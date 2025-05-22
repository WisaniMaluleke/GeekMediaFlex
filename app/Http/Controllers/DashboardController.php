<?php

namespace App\Http\Controllers;

use Inertia\Inertia;

class DashboardController extends Controller
{
    public function dashboard()
    {
        return Inertia::render('Dashboard');
    }

    public function videos()
    {
        return Inertia::render('videos/Videos');
    }

    public function music()
    {
        return Inertia::render('music/Music');
    }
}
