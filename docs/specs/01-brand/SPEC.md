# Volume 01 - Brand Identity Specification v1.0.0

Status: Released baseline
Owner: Brand Working Group
Last updated: 2026-08-02

## Purpose

This specification defines the canonical LifestyleIQ brand identity and implementation guidance. It converts the approved brand decisions from early product development into versioned source files that can guide app design, web design, Flutter implementation, marketing, and future asset production.

## Brand Foundation

LifestyleIQ is a personal health intelligence platform. It helps users understand how daily habits affect their health by uncovering patterns, identifying likely triggers, and recommending practical improvements.

The approved philosophy is:

> Translating daily habits into a plan towards optimal health.

## Personality

LifestyleIQ should feel intelligent, calm, positive, scientific, optimistic, human, data-driven, premium, and trustworthy.

It should not feel clinical, hospital-like, cold, sterile, overly technical, extreme, or trend-driven.

## Logo Direction

The approved logo direction is a green to teal rounded-square icon containing a white lifestyle figure and leaf symbol, paired with a LifestyleIQ wordmark. The icon must work as an iOS app icon, Android launcher icon, favicon, social avatar, wearable icon, and standalone product symbol.

## Color Direction

The signature brand expression is the Fresh Lime to Evergreen gradient. Purple is reserved primarily for AI-generated insights and machine-learning behavior.

## Typography Direction

Inter is the primary UI typeface. SF Pro, Roboto, and system-ui are platform fallbacks. A custom wordmark may be developed independently without changing the UI type system.

## Implementation Requirements

- Every color must exist as a token before production use.
- The logo must not be redrawn from memory.
- App icon exports must preserve safe area and contrast.
- AI-specific color use must follow the purple reservation rule.
- Brand assets must include source, generated export, and platform-specific paths.

## Version History

- v1.0.0: Initial approved baseline.
