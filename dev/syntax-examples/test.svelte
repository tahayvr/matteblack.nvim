<!--
  Theme Test File for Svelte
  This file contains various Svelte syntax elements.
-->

<script lang="ts">
  // --- Comments ---
  // This is a standard comment.
  // TODO: Fetch the items list from an API instead of hardcoding.

  // --- Imports ---
  import { onMount } from 'svelte';

  // --- Props ---
  export let initialCount: number = 0;

  // --- State Variables ---
  let count: number = initialCount;
  let name: string = 'Svelte';
  let items: string[] = ['Apple', 'Banana', 'Cherry'];

  // --- Reactive Statements ---
  // @keyword: `$` is a special Svelte keyword for reactivity
  $: doubled = count * 2;
  $: if (count > 5) {
    console.log('Count is greater than 5!');
  }

  // --- Functions ---
  function increment() {
    count += 1;
  }

  // --- Lifecycle Function ---
  onMount(() => {
    console.log('Component has been mounted.');
  });
</script>

<style>
  /* --- CSS Comments --- */
  /* FIXME: The button shadow is too strong. */

  main {
    font-family: sans-serif;
    text-align: center;
  }

  h1 {
    /* @property: `color` */
    color: #ff3e00;
  }

  button {
    background-color: #f0f0f0;
    border: 1px solid #ccc;
    padding: 0.5rem 1rem;
    cursor: pointer;
    transition: background-color 0.2s;
  }

  /* @constant.builtin: Pseudo-class */
  button:hover {
    background-color: #e0e0e0;
  }

  /* Svelte-specific global selector */
  :global(body) {
    margin: 0;
  }
</style>

<main>
  <!-- @text.title: `h1` is a title -->
  <h1>Hello, {name.toUpperCase()}!</h1>

  <!-- Event Handling -->
  <button on:click={increment}>
    Clicks: {count}
  </button>

  <!-- Reactive variable display -->
  <p>Doubled: {doubled}</p>

  <!-- Conditional Logic -->
  {#if count > 5}
    <p>You've clicked a lot!</p>
  {:else if count > 0}
    <p>Keep clicking...</p>
  {/if}

  <!-- Looping -->
  <h3>Items:</h3>
  <ul>
    {#each items as item, i}
      <li>{i + 1}: {item}</li>
    {/each}
  </ul>

  <!-- Data Binding -->
  <input type="text" bind:value={name} />

  <!-- Deliberate Syntax Error -->
  <!-- Remove the comment markers to test LSP diagnostics -->
  <!-- {#if count > 10 -->
  <!--   <p>This block is not closed correctly.</p> -->
  <!-- {/if -->

</main>
