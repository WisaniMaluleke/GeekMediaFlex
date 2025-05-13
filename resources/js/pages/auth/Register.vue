<script setup lang="ts">
import InputError from '@/components/InputError.vue';
import TextLink from '@/components/TextLink.vue';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import AuthBase from '@/layouts/AuthLayout.vue';
import { Head, useForm } from '@inertiajs/vue3';
import { LoaderCircle } from 'lucide-vue-next';

const form = useForm({
    name: '',
    email: '',
    password: '',
    password_confirmation: '',
});

const submit = () => {
    form.post(route('register'), {
        onFinish: () => form.reset('password', 'password_confirmation'),
    });
};
</script>

<template>
    <AuthBase title="Create an account" description="Enter your details below to create your account">

        <Head title="Register" />

        <form @submit.prevent="submit" class="flex flex-col gap-6">
            <div class="grid gap-6">
                <div class="grid gap-2">
                    <Label for="name">Name</Label>
                    <Input id="name" type="text" required autofocus :tabindex="1" autocomplete="name"
                        v-model="form.name" placeholder="Full name"
                        class="transition duration-200 border border-gray-300 rounded-md focus:ring-2 focus:ring-purple-500 focus:border-purple-500"/>
                    <InputError :message="form.errors.name" />
                </div>

                <div class="grid gap-2">
                    <Label for="email">Email address</Label>
                    <Input id="email" type="email" required :tabindex="2" autocomplete="email" v-model="form.email"
                        placeholder="email@example.com"
                        class="transition duration-200 border border-gray-300 rounded-md focus:ring-2 focus:ring-purple-500 focus:border-purple-500"/>
                    <InputError :message="form.errors.email" />
                </div>

                <div class="grid gap-2">
                    <Label for="password">Password</Label>
                    <Input id="password" type="password" required :tabindex="3" autocomplete="new-password"
                        v-model="form.password" placeholder="Password"
                        class="transition duration-200 border border-gray-300 rounded-md focus:ring-2 focus:ring-purple-500 focus:border-purple-500"/>
                    <InputError :message="form.errors.password" />
                </div>

                <div class="grid gap-2">
                    <Label for="password_confirmation">Confirm password</Label>
                    <Input id="password_confirmation" type="password" required :tabindex="4" autocomplete="new-password"
                        v-model="form.password_confirmation" placeholder="Confirm password"
                        class="transition duration-200 border border-gray-300 rounded-md focus:ring-2 focus:ring-purple-500 focus:border-purple-500"/>
                    <InputError :message="form.errors.password_confirmation" />
                </div>

                <Button type="submit"
                    class="w-full py-2 mt-2 font-semibold text-white transition-all duration-300 bg-purple-600 rounded-lg shadow-md hover:bg-purple-700"
                    tabindex="5" :disabled="form.processing">
                    <LoaderCircle v-if="form.processing" class="w-4 h-4 animate-spin" />
                    Create account
                </Button>

            </div>

            <div class="text-sm text-center text-gray-600 dark:text-gray-300">
                Already have an account?
                <TextLink :href="route('login')" class="font-medium text-purple-700 underline hover:text-purple-900"
                    :tabindex="6">
                    Log in
                </TextLink>
            </div>

        </form>
    </AuthBase>
</template>
