<script setup lang="ts">
import AppLayout from '@/layouts/AppLayout.vue';

const breadcrumbs = [{ title: 'Music', href: '/music' }];
</script>

<template>
    <AppLayout :breadcrumbs="breadcrumbs">
    </AppLayout>
</template>
