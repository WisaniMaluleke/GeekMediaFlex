<script setup lang="ts">
import AppLayout from '@/layouts/AppLayout.vue';
import { type BreadcrumbItem } from '@/types';
import { Head } from '@inertiajs/vue3';

const breadcrumbs: BreadcrumbItem[] = [
    { title: 'Dashboard', href: '/dashboard' },
];
</script>

<template>
    <Head title="Dashboard" />

    <AppLayout :breadcrumbs="breadcrumbs">
        <div class="flex flex-col gap-6 p-6 bg-gradient-to-br from-purple-600 via-indigo-600 to-blue-600 min-h-screen text-white">

            <!-- Header -->
            <div class="flex justify-between items-center">
                <h1 class="text-2xl font-bold">Welcome to GeekMediaFlex 🎶📺</h1>
                <input type="text" placeholder="Search music or videos..."
                    class="px-4 py-2 rounded-md text-black w-1/3 focus:outline-none focus:ring-2 focus:ring-indigo-300" />
            </div>

            <!-- Featured Section -->
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div class="p-6 bg-black/20 rounded-xl shadow-lg">
                    <h2 class="text-lg font-semibold">🔥 Trending Music</h2>
                    <div class="flex gap-4 mt-4">
                        <div class="w-16 h-16 bg-gray-400 rounded-lg"></div>
                        <div>
                            <h3 class="text-md font-medium">Song Title</h3>
                            <p class="text-sm text-gray-300">Artist Name</p>
                        </div>
                    </div>
                </div>

                <div class="p-6 bg-black/20 rounded-xl shadow-lg">
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
                <div class="p-6 bg-black/30 rounded-xl shadow-lg">
                    <h2 class="text-lg font-semibold">🎵 Your Playlists</h2>
                    <div class="grid grid-cols-2 gap-4 mt-4">
                        <div class="p-4 bg-gray-700/30 rounded-lg shadow-md text-center">Playlist 1</div>
                        <div class="p-4 bg-gray-700/30 rounded-lg shadow-md text-center">Playlist 2</div>
                        <div class="p-4 bg-gray-700/30 rounded-lg shadow-md text-center">Playlist 3</div>
                        <div class="p-4 bg-gray-700/30 rounded-lg shadow-md text-center">Playlist 4</div>
                    </div>
                </div>

                <!-- Video Section -->
                <div class="p-6 bg-black/30 rounded-xl shadow-lg">
                    <h2 class="text-lg font-semibold">📺 Watch Again</h2>
                    <div class="grid grid-cols-2 gap-4 mt-4">
                        <div class="p-4 bg-gray-700/30 rounded-lg shadow-md text-center">Video 1</div>
                        <div class="p-4 bg-gray-700/30 rounded-lg shadow-md text-center">Video 2</div>
                        <div class="p-4 bg-gray-700/30 rounded-lg shadow-md text-center">Video 3</div>
                        <div class="p-4 bg-gray-700/30 rounded-lg shadow-md text-center">Video 4</div>
                    </div>
                </div>

            </div>

        </div>
    </AppLayout>
</template>
