<script setup lang="ts">
import { Head, Link, usePage } from '@inertiajs/vue3';
import type { SharedData } from '@/types/index.d'; // Adjust path if needed

const page = usePage<SharedData>();
</script>

<template>
    <Head title="Welcome">
        <link rel="preconnect" href="https://rsms.me/" />
        <link rel="stylesheet" href="https://rsms.me/inter/inter.css" />
    </Head>

    <div class="flex flex-col min-h-screen text-white bg-gradient-to-b from-purple-500 via-pink-500 to-yellow-500 dark:from-gray-900 dark:to-gray-800">
        <!-- Navigation -->
        <header class="w-full p-6 lg:p-8">
            <nav class="flex items-center justify-end max-w-4xl gap-4 mx-auto">
                <Link
                    v-if="page.props.auth.user"
                    :href="route('dashboard')"
                    class="rounded-md border px-5 py-1.5 text-sm bg-white text-gray-800 shadow-md hover:bg-gray-200 dark:bg-gray-800 dark:text-white dark:hover:bg-gray-700"
                >
                    Dashboard
                </Link>
                <template v-else>
                    <Link :href="route('login')"  class="rounded-md border px-5 py-1.5 text-sm bg-yellow-400 text-gray-900 shadow-md hover:bg-yellow-500"
                    >
                        Log in
                    </Link>
                </template>
            </nav>
        </header>

        <!-- Hero Section -->
        <section class="flex flex-col items-center justify-center flex-grow p-10 space-y-6 text-center">
            <h1 class="text-4xl font-extrabold drop-shadow-lg lg:text-6xl">🎶 GeekMediaFlex 🎥</h1>
            <p class="max-w-lg text-lg font-light">Stream the latest music and videos in high quality. Unlimited entertainment at your fingertips.</p>

            <Link
                v-if="!page.props.auth.user"
                :href="route('register')"
                class="px-6 py-3 text-gray-900 transition-transform bg-green-400 rounded-full shadow-md hover:bg-green-500 hover:scale-105"
            >
                Request registration
            </Link>
        </section>

        <!-- Features -->
        <section class="grid max-w-4xl grid-cols-1 gap-6 p-10 mx-auto md:grid-cols-3">
            <div class="p-6 text-center bg-blue-600 rounded-lg shadow-lg">
                <h2 class="text-xl font-semibold">🎧 High-Quality Streaming</h2>
                <p class="text-sm">Enjoy lossless audio and 4K videos on any device.</p>
            </div>
            <div class="p-6 text-center bg-red-500 rounded-lg shadow-lg">
                <h2 class="text-xl font-semibold">🔥 Curated Playlists</h2>
                <p class="text-sm">Personalized playlists crafted just for you.</p>
            </div>
            <div class="p-6 text-center bg-purple-700 rounded-lg shadow-lg">
                <h2 class="text-xl font-semibold">📱 Multi-Device Support</h2>
                <p class="text-sm">Seamlessly switch between mobile, tablet, and desktop.</p>
            </div>
        </section>

        <!-- Footer -->
        <footer class="p-6 text-sm text-center text-gray-300">
            &copy; 2025 GeekMediaFlex. All rights reserved.
        </footer>

    </div>
</template>
