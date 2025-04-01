<script setup lang="ts">
import NavFooter from '@/components/NavFooter.vue';
import NavMain from '@/components/NavMain.vue';
import NavUser from '@/components/NavUser.vue';
import { Sidebar, SidebarContent, SidebarFooter, SidebarHeader, SidebarMenu, SidebarMenuButton, SidebarMenuItem } from '@/components/ui/sidebar';
import { type NavItem } from '@/types';
import { Link } from '@inertiajs/vue3';
import { BookOpen, Folder, LayoutGrid } from 'lucide-vue-next';
import AppLogo from './AppLogo.vue';

const mainNavItems: NavItem[] = [
    {
        title: 'Dashboard',
        href: '/dashboard',
        icon: LayoutGrid,
    },
];

const footerNavItems: NavItem[] = [
    {
        title: 'Github Repo',
        href: 'https://github.com/laravel/vue-starter-kit',
        icon: Folder,
    },
    {
        title: 'Documentation',
        href: 'https://laravel.com/docs/starter-kits',
        icon: BookOpen,
    },
];
</script>

<template>
    <Sidebar collapsible="icon" variant="inset" class="flex flex-col w-64 gap-6 p-6 bg-gray-800 border-r border-gray-700">

        <!-- Sidebar Header -->
        <SidebarHeader>
            <SidebarMenu>
                <SidebarMenuItem>
                    <SidebarMenuButton size="lg" as-child>
                        <Link :href="route('dashboard')" class="flex items-center gap-3">
                            <AppLogo />
                            <h1 class="text-xl font-semibold text-white">GeekMediaFlex</h1>
                        </Link>
                    </SidebarMenuButton>
                </SidebarMenuItem>
            </SidebarMenu>
        </SidebarHeader>

        <!-- Sidebar Content -->
        <SidebarContent>
            <nav class="flex flex-col gap-4">
                <Link href="/dashboard" class="flex items-center gap-3 p-2 text-white rounded-lg hover:bg-gray-700">
                    📊 Dashboard
                </Link>
                <Link href="/music" class="flex items-center gap-3 p-2 text-white rounded-lg hover:bg-gray-700">
                    🎵 Music
                </Link>
                <Link href="/videos" class="flex items-center gap-3 p-2 text-white rounded-lg hover:bg-gray-700">
                    🎬 Videos
                </Link>
                <Link href="/playlists" class="flex items-center gap-3 p-2 text-white rounded-lg hover:bg-gray-700">
                    📁 Playlists
                </Link>
                <Link href="/settings" class="flex items-center gap-3 p-2 text-white rounded-lg hover:bg-gray-700">
                    ⚙️ Settings
                </Link>
            </nav>
        </SidebarContent>

        <!-- Sidebar Footer -->
        <SidebarFooter>
            <NavFooter :items="footerNavItems" />
            <NavUser />
        </SidebarFooter>

    </Sidebar>

    <slot />
</template>
