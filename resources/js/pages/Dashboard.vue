<script setup lang="ts">
import { Head, Link } from '@inertiajs/vue3';
import AppLayout from '@/layouts/AppLayout.vue';

const breadcrumbs = [{ title: 'Dashboard', href: '/dashboard' }];
</script>

<template>
    <Head title="Dashboard" />

    <AppLayout :breadcrumbs="breadcrumbs">
        <div class="flex h-screen text-white bg-gray-900">
            <!-- Main Content -->
            <main class="flex flex-col flex-1 gap-6 p-6">

                <!-- Navbar -->
                <header class="flex items-center justify-between p-4 bg-gray-800 rounded-lg">
                    <h1 class="text-lg font-semibold">Dashboard</h1>
                    <input type="text" placeholder="Search music or videos..."
                        class="w-1/3 px-4 py-2 text-black rounded-md focus:outline-none focus:ring-2 focus:ring-blue-400" />
                </header>

                <!-- Featured Content -->
                <div class="grid grid-cols-1 gap-6 md:grid-cols-2">
                    <div class="p-6 shadow-lg bg-gradient-to-r from-purple-500 to-indigo-600 rounded-xl">
                        <h2 class="text-lg font-semibold">🔥 Trending Music</h2>
                        <div class="flex gap-4 mt-4">
                            <div class="w-16 h-16 bg-gray-400 rounded-lg"></div>
                            <div>
                                <h3 class="font-medium text-md">Song Title</h3>
                                <p class="text-sm text-gray-300">Artist Name</p>
                            </div>
                        </div>
                    </div>

                    <div class="p-6 shadow-lg bg-gradient-to-r from-blue-500 to-green-600 rounded-xl">
                        <h2 class="text-lg font-semibold">🎬 Latest Videos</h2>
                        <div class="flex gap-4 mt-4">
                            <div class="w-16 h-16 bg-gray-400 rounded-lg"></div>
                            <div>
                                <h3 class="font-medium text-md">Video Title</h3>
                                <p class="text-sm text-gray-300">Channel Name</p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Music & Video Sections -->
                <div class="grid grid-cols-1 gap-6 md:grid-cols-2">

                    <!-- Music Section -->
                    <div class="p-6 bg-gray-800 shadow-lg rounded-xl">
                        <h2 class="text-lg font-semibold">🎵 Your Playlists</h2>
                        <div class="grid grid-cols-2 gap-4 mt-4">
                            <div class="p-4 text-center bg-gray-700 rounded-lg">Playlist 1</div>
                            <div class="p-4 text-center bg-gray-700 rounded-lg">Playlist 2</div>
                            <div class="p-4 text-center bg-gray-700 rounded-lg">Playlist 3</div>
                            <div class="p-4 text-center bg-gray-700 rounded-lg">Playlist 4</div>
                        </div>
                    </div>

                    <!-- Video Section -->
                    <div class="p-6 bg-gray-800 shadow-lg rounded-xl">
                        <h2 class="text-lg font-semibold">📺 Watch Again</h2>
                        <div class="grid grid-cols-2 gap-4 mt-4">
                            <div class="p-4 text-center bg-gray-700 rounded-lg">Video 1</div>
                            <div class="p-4 text-center bg-gray-700 rounded-lg">Video 2</div>
                            <div class="p-4 text-center bg-gray-700 rounded-lg">Video 3</div>
                            <div class="p-4 text-center bg-gray-700 rounded-lg">Video 4</div>
                        </div>
                    </div>

                </div>

            </main>
        </div>
    </AppLayout>
</template>
