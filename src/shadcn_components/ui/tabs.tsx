"use client";

import * as React from "react";
import * as TabsPrimitive from "@radix-ui/react-tabs";
import { cn } from "@/lib/utils";

function Tabs({
  className,
  ...props
}: React.ComponentProps<typeof TabsPrimitive.Root>) {
  return (
    <TabsPrimitive.Root
      data-slot="tabs"
      className={cn(
        "flex flex-col md:flex-row gap-4 md:gap-10", // Stack on small screens, row on md+
        className
      )}
      {...props}
    />
  );
}

function TabsList({
  className,
  ...props
}: React.ComponentProps<typeof TabsPrimitive.List>) {
  return (
    <TabsPrimitive.List
      data-slot="tabs-list"
      className={cn(
        "bg-muted text-muted-foreground w-full max-w-full rounded-lg p-1", // Full width on all screens
        "grid grid-cols-1 md:grid-cols-2 gap-2", // 1 column on small, 2 on md+
        className
      )}
      {...props}
    />
  );
}

function TabsTrigger({
  className,
  ...props
}: React.ComponentProps<typeof TabsPrimitive.Trigger>) {
  return (
    <TabsPrimitive.Trigger
      data-slot="tabs-trigger"
      className={cn(
        "data-[state=active]:bg-background dark:data-[state=active]:text-foreground",
        "focus-visible:border-ring focus-visible:ring-ring/50 focus-visible:outline-ring",
        "dark:data-[state=active]:border-input dark:data-[state=active]:bg-input/30",
        "text-foreground dark:text-muted-foreground",
        "inline-flex w-full items-center justify-center gap-1.5 rounded-md border border-transparent",
        "px-3 py-2 text-sm font-medium whitespace-nowrap transition-[color,box-shadow]",
        "focus-visible:ring-[3px] focus-visible:outline-1",
        "disabled:pointer-events-none disabled:opacity-50 data-[state=active]:shadow-sm",
        "[&_svg]:pointer-events-none [&_svg]:shrink-0 [&_svg:not([class*='size-'])]:size-4",
        className
      )}
      {...props}
    />
  );
}

function TabsContent({
  className,
  ...props
}: React.ComponentProps<typeof TabsPrimitive.Content>) {
  return (
    <TabsPrimitive.Content
      data-slot="tabs-content"
      className={cn("flex-1 outline-none", className)}
      {...props}
    />
  );
}

export { Tabs, TabsList, TabsTrigger, TabsContent };