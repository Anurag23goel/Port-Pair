"use client";

import { useState, useCallback, useEffect } from "react";
import { Search, Ship, Anchor, Globe2, MapPinned } from "lucide-react";
import { debounce } from "lodash";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shadcn_components/ui/card";
import { Input } from "@/shadcn_components/ui/input";
import { Button } from "@/shadcn_components/ui/button";
import { Tabs, TabsList, TabsTrigger } from "@/shadcn_components/ui/tabs";

interface PortDetails {
  port_id: number;
  pod: string;
  region: string | null;
  country: string | null;
  shipping_lines: string;
}

export default function Home() {
  const [searchMode, setSearchMode] = useState<"port" | "line">("port");
  const [query, setQuery] = useState("");
  const [suggestions, setSuggestions] = useState<string[]>([]);
  const [selectedPort, setSelectedPort] = useState<PortDetails | null>(null);
  const [selectedLine, setSelectedLine] = useState<PortDetails[] | null>(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    setQuery("");
    setSuggestions([]);
    setSelectedPort(null);
    setSelectedLine(null);
    setError(null);
  }, [searchMode]);

  const fetchSuggestions = useCallback(
    debounce(async (q: string) => {
      if (q.length < 2) return setSuggestions([]);
      try {
        const endpoint =
          searchMode === "port"
            ? `/api/ports/suggestions?query=${q}`
            : `/api/shipping-lines/suggestions?query=${q}`;
        const res = await fetch(endpoint);
        const data = await res.json();
        setSuggestions(data);
      } catch (err: any) {
        console.error("Suggestions Error:", err.message);
        setSuggestions([]);
      }
    }, 100),
    [searchMode]
  );

  const fetchDetails = async (input: string) => {
    setLoading(true);
    setError(null);
    try {
      const endpoint =
        searchMode === "port"
          ? `/api/ports/${encodeURIComponent(input)}`
          : `/api/shipping-lines/${encodeURIComponent(input)}`;
      const res = await fetch(endpoint);
      const { data, success, error } = await res.json();
      if (!success) throw new Error(error || "Not found");

      if (searchMode === "port") {
        setSelectedPort(data);
        setSelectedLine(null);
      } else {
        setSelectedLine(data);
        setSelectedPort(null);
      }
    } catch (err: any) {
      setError(err.message || "Something went wrong.");
    } finally {
      setLoading(false);
    }
  };

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    if (query.trim()) fetchDetails(query);
  };

  const handleSuggestionClick = (s: string) => {
    setQuery(s);
    setSuggestions([]);
    fetchDetails(s);
  };

  const getShippingLines = (port: PortDetails | null) =>
    port?.shipping_lines?.split(",").map((line) => line.trim()) || [];

  return (
    <div className="bg-gradient-to-br from-gray-50 to-gray-100 dark:from-gray-900 dark:to-gray-800 min-h-screen">
      <div className="container mx-auto px-4 py-8 sm:py-12">
        {/* Header */}
        <div className="text-center mb-6 md:mb-10">
          <div className="flex flex-col sm:flex-row justify-center items-center gap-3">
            <Ship className="h-10 w-10 text-blue-600 dark:text-blue-400" />
            <h1 className="text-xl sm:text-3xl md:text-4xl font-bold text-gray-800 dark:text-white">
              Global Port & Shipping Directory
            </h1>
          </div>
          <p className="mt-3 text-gray-600 dark:text-gray-300 max-w-2xl mx-auto text-base sm:text-lg">
            Discover ports and shipping lines around the world with smart search
            tools.
          </p>
        </div>

        {/* Tabs for Search Mode */}
        <div className="max-w-xl mx-auto mb-6">
          <Tabs
            value={searchMode}
            onValueChange={(val: any) => setSearchMode(val)}
          >
            <TabsList>
              <TabsTrigger value="port">
                <MapPinned className="mr-2 h-4 w-4" />
                Search by Port
              </TabsTrigger>
              <TabsTrigger value="line">
                <Globe2 className="mr-2 h-4 w-4" />
                Search by Shipping Line
              </TabsTrigger>
            </TabsList>
          </Tabs>
        </div>

        {/* Search Card */}
        <Card className="max-w-xl mx-auto mb-8 shadow-md">
          <CardHeader>
            <CardTitle className="flex items-center gap-2">
              <Search className="h-5 w-5" />
              {searchMode === "port" ? "Search Port" : "Search Shipping Line"}
            </CardTitle>
            <CardDescription>
              {searchMode === "port"
                ? "Enter a port name to explore its details and shipping lines."
                : "Enter a shipping line to view associated ports."}
            </CardDescription>
          </CardHeader>
          <CardContent>
            <form onSubmit={handleSubmit} className="space-y-4">
              <div className="relative">
                <Input
                  placeholder={
                    searchMode === "port"
                      ? "E.g., Shanghai, Singapore"
                      : "E.g., Maersk, MSC"
                  }
                  value={query}
                  onChange={(e) => {
                    setQuery(e.target.value);
                    fetchSuggestions(e.target.value);
                  }}
                />
                {suggestions.length > 0 && (
                  <ul className="absolute w-full mt-1 z-10 bg-white dark:bg-gray-800 border border-gray-300 dark:border-gray-700 rounded-md shadow-md max-h-60 overflow-auto text-sm">
                    {suggestions.map((s) => (
                      <li
                        key={s}
                        className="px-4 py-2 cursor-pointer hover:bg-gray-100 dark:hover:bg-gray-700"
                        onClick={() => handleSuggestionClick(s)}
                      >
                        {s}
                      </li>
                    ))}
                  </ul>
                )}
              </div>
              <Button className="w-full" disabled={!query || loading}>
                {loading ? "Loading..." : "Search"}
              </Button>
            </form>
          </CardContent>
        </Card>

        {/* Error */}
        {error && (
          <div className="max-w-xl mx-auto mb-8 px-4 py-3 text-red-700 bg-red-100 dark:bg-red-900/20 dark:text-red-400 rounded-md shadow">
            {error}
          </div>
        )}

        {/* Port Result */}
        {selectedPort && (
          <div className="grid grid-cols-1 md:grid-cols-2 gap-6 max-w-5xl mx-auto">
            <Card>
              <CardHeader>
                <CardTitle className="flex gap-2 items-center">
                  <Anchor className="h-5 w-5 text-blue-500" />
                  Port Information
                </CardTitle>
              </CardHeader>
              <CardContent className="space-y-3 text-sm">
                <div>
                  <p className="text-gray-500 dark:text-gray-400">Port Name</p>
                  <p className="font-semibold">{selectedPort.pod}</p>
                </div>
                <div>
                  <p className="text-gray-500 dark:text-gray-400">Region</p>
                  <p>{selectedPort.region || "Not specified"}</p>
                </div>
                <div>
                  <p className="text-gray-500 dark:text-gray-400">Country</p>
                  <p>{selectedPort.country || "Not specified"}</p>
                </div>
              </CardContent>
            </Card>

            <Card>
              <CardHeader>
                <CardTitle className="flex gap-2 items-center">
                  <Globe2 className="h-5 w-5 text-green-500" />
                  Shipping Lines
                </CardTitle>
              </CardHeader>
              <CardContent>
                <ul className="space-y-2">
                  {getShippingLines(selectedPort).map((line) => (
                    <li
                      key={line}
                      className="flex items-center gap-2 p-2 rounded-md bg-gray-100 dark:bg-gray-800"
                    >
                      <Ship className="h-4 w-4 text-blue-600" />
                      {line}
                    </li>
                  ))}
                </ul>
              </CardContent>
            </Card>
          </div>
        )}

        {/* Line Result */}
        {selectedLine && (
          <div className="max-w-5xl mx-auto mt-10">
            <Card className="shadow-md">
              <CardHeader>
                <CardTitle className="flex gap-2 items-center">
                  <Globe2 className="h-5 w-5 text-green-500" />
                  Ports Served by {query}
                </CardTitle>
              </CardHeader>
              <CardContent>
                <ul className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3">
                  {selectedLine.map((port) => (
                    <li
                      key={port.port_id}
                      className="bg-gray-100 dark:bg-gray-800 p-4 rounded-md"
                    >
                      <div className="flex items-center gap-2 font-semibold">
                        <Anchor className="h-4 w-4 text-blue-600" />
                        {port.pod}
                      </div>
                      <p className="text-sm text-gray-600 dark:text-gray-400 ml-6">
                        {port.region || "N/A"}, {port.country || "N/A"}
                      </p>
                    </li>
                  ))}
                </ul>
              </CardContent>
            </Card>
          </div>
        )}
      </div>
    </div>
  );
}
