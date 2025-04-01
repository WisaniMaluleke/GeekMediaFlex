<script setup lang="ts">
import { Head, Link } from '@inertiajs/vue3';
import AppLayout from '@/layouts/AppLayout.vue';

const breadcrumbs = [{ title: 'Dashboard', href: '/dashboard' }];
</script>

<template>
    <Head title="Dashboard" />

    <AppLayout :breadcrumbs="breadcrumbs">
        <div class="flex h-screen bg-gray-900 text-white">

            <!-- Sidebar -->
            <aside class="w-64 bg-gray-800 p-6 flex flex-col gap-6">
                <!-- Logo Section -->
                <div class="flex items-center gap-2">
                    <img src="/logo.png" alt="App Logo" class="h-10 w-10" />
                    <h1 class="text-xl font-semibold">GeekMediaFlex</h1>
                </div>

                <!-- Navigation -->
                <nav class="flex flex-col gap-4">
                    <Link href="/dashboard" class="flex items-center gap-3 p-2 rounded-lg hover:bg-gray-700">
                        📊 Dashboard
                    </Link>
                    <Link href="/music" class="flex items-center gap-3 p-2 rounded-lg hover:bg-gray-700">
                        🎵 Music
                    </Link>
                    <Link href="/videos" class="flex items-center gap-3 p-2 rounded-lg hover:bg-gray-700">
                        🎬 Videos
                    </Link>
                    <Link href="/playlists" class="flex items-center gap-3 p-2 rounded-lg hover:bg-gray-700">
                        📁 Playlists
                    </Link>
                    <Link href="/settings" class="flex items-center gap-3 p-2 rounded-lg hover:bg-gray-700">
                        ⚙️ Settings
                    </Link>
                </nav>
            </aside>

            <!-- Main Content -->
            <main class="flex-1 flex flex-col p-6 gap-6">

                <!-- Navbar -->
                <header class="flex justify-between items-center bg-gray-800 p-4 rounded-lg">
                    <h1 class="text-lg font-semibold">Dashboard</h1>
                    <input type="text" placeholder="Search music or videos..."
                        class="px-4 py-2 rounded-md text-black w-1/3 focus:outline-none focus:ring-2 focus:ring-blue-400" />
                </header>

                <!-- Featured Content -->
                <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                    <div class="p-6 bg-gradient-to-r from-purple-500 to-indigo-600 rounded-xl shadow-lg">
                        <h2 class="text-lg font-semibold">🔥 Trending Music</h2>
                        <div class="flex gap-4 mt-4">
                            <div class="w-16 h-16 bg-gray-400 rounded-lg"></div>
                            <div>
                                <h3 class="text-md font-medium">Song Title</h3>
                                <p class="text-sm text-gray-300">Artist Name</p>
                            </div>
                        </div>
                    </div>

                    <div class="p-6 bg-gradient-to-r from-blue-500 to-green-600 rounded-xl shadow-lg">
                        <h2 class="text-lg font-semibold">🎬 Latest Videos</h2>
                        <div class="flex gap-4 mt-4">
                            <div class="w-16 h-16 bg-gray-400 rounded-lg"></div>
                            <div>
                                <h3 class="text-md font-medium">Video Title</h3>
                                <p class="text-sm text-gray-300">Channel Name</p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Music & Video Sections -->
                <div class="grid grid-cols-1 md:grid-cols-2 gap-6">

                    <!-- Music Section -->
                    <div class="p-6 bg-gray-800 rounded-xl shadow-lg">
                        <h2 class="text-lg font-semibold">🎵 Your Playlists</h2>
                        <div class="grid grid-cols-2 gap-4 mt-4">
                            <div class="p-4 bg-gray-700 rounded-lg text-center">Playlist 1</div>
                            <div class="p-4 bg-gray-700 rounded-lg text-center">Playlist 2</div>
                            <div class="p-4 bg-gray-700 rounded-lg text-center">Playlist 3</div>
                            <div class="p-4 bg-gray-700 rounded-lg text-center">Playlist 4</div>
                        </div>
                    </div>

                    <!-- Video Section -->
                    <div class="p-6 bg-gray-800 rounded-xl shadow-lg">
                        <h2 class="text-lg font-semibold">📺 Watch Again</h2>
                        <div class="grid grid-cols-2 gap-4 mt-4">
                            <div class="p-4 bg-gray-700 rounded-lg text-center">Video 1</div>
                            <div class="p-4 bg-gray-700 rounded-lg text-center">Video 2</div>
                            <div class="p-4 bg-gray-700 rounded-lg text-center">Video 3</div>
                            <div class="p-4 bg-gray-700 rounded-lg text-center">Video 4</div>
                        </div>
                    </div>

                </div>

            </main>
        </div>
    </AppLayout>
</template>
