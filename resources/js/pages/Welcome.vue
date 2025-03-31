<script setup lang="ts">
import { Head, Link } from '@inertiajs/vue3';
</script>

<template>
    <Head title="Welcome">
        <link rel="preconnect" href="https://rsms.me/" />
        <link rel="stylesheet" href="https://rsms.me/inter/inter.css" />
    </Head>

    <div class="flex min-h-screen flex-col bg-gradient-to-b from-purple-500 via-pink-500 to-yellow-500 text-white dark:from-gray-900 dark:to-gray-800">
        <!-- Navigation -->
        <header class="w-full p-6 lg:p-8">
            <nav class="flex items-center justify-end gap-4 max-w-4xl mx-auto">
                <Link
                    v-if="$page.props.auth.user"
                    :href="route('dashboard')"
                    class="rounded-md border px-5 py-1.5 text-sm bg-white text-gray-800 shadow-md hover:bg-gray-200 dark:bg-gray-800 dark:text-white dark:hover:bg-gray-700"
                >
                    Dashboard
                </Link>
                <template v-else>
                    <Link :href="route('login')" class="px-5 py-1.5 text-sm hover:underline">Log in</Link>
                    <Link
                        :href="route('register')"
                        class="rounded-md border px-5 py-1.5 text-sm bg-yellow-400 text-gray-900 shadow-md hover:bg-yellow-500"
                    >
                        Register
                    </Link>
                </template>
            </nav>
        </header>

        <!-- Hero Section -->
        <section class="flex flex-grow flex-col items-center justify-center text-center p-10 space-y-6">
            <h1 class="text-4xl font-extrabold drop-shadow-lg lg:text-6xl">🎶 GeekMediaFlex 🎥</h1>
            <p class="text-lg max-w-lg font-light">Stream the latest music and videos in high quality. Unlimited entertainment at your fingertips.</p>
            <Link
                :href="route('register')"
                class="bg-green-400 text-gray-900 px-6 py-3 rounded-full shadow-md hover:bg-green-500 hover:scale-105 transition-transform"
            >
                Get Started
            </Link>
        </section>

        <!-- Features -->
        <section class="grid grid-cols-1 md:grid-cols-3 gap-6 p-10 max-w-4xl mx-auto">
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

        <!-- How It Works -->
        <section class="p-10 bg-gray-100 dark:bg-gray-900 text-gray-800 dark:text-gray-200">
            <div class="max-w-4xl mx-auto space-y-6">
                <h2 class="text-center text-2xl font-bold">🚀 How It Works</h2>
                <div class="grid grid-cols-1 md:grid-cols-3 gap-6 text-center">
                    <div class="p-4 bg-white dark:bg-gray-800 rounded-lg shadow-md">
                        <h3 class="text-lg font-semibold">1. Sign Up</h3>
                        <p class="text-sm">Create an account to unlock premium features.</p>
                    </div>
                    <div class="p-4 bg-white dark:bg-gray-800 rounded-lg shadow-md">
                        <h3 class="text-lg font-semibold">2. Explore</h3>
                        <p class="text-sm">Discover trending content and create your own playlists.</p>
                    </div>
                    <div class="p-4 bg-white dark:bg-gray-800 rounded-lg shadow-md">
                        <h3 class="text-lg font-semibold">3. Enjoy</h3>
                        <p class="text-sm">Stream seamlessly on any device, anytime.</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer class="text-center p-6 text-sm bg-black text-gray-300">
            &copy; 2025 GeekMediaFlex. All rights reserved.
        </footer>

    </div>
</template>
