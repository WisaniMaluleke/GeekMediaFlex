<script setup lang="ts">
import AppLayout from '@/layouts/AppLayout.vue';

const breadcrumbs = [{ title: 'Videos', href: '/videos' }];
</script>

<template>
    <AppLayout :breadcrumbs="breadcrumbs">
    </AppLayout>
</template>
