---
layout: page
title: Projects
permalink: /projects/
description:
nav: true
nav_order: 3
---

<p class="project-intro">Selected funded research projects, including sponsor, program, role, and principal investigator information.<br>Total funding as principal investigator to date: $44,860.</p>

<style>
  .project-intro {
    margin-bottom: 2rem;
  }

  .project-list {
    margin-top: 0;
  }

  .project-section {
    margin-bottom: 2rem;
  }

  .project-section + .project-section {
    margin-top: 2rem;
  }

  .project-section h2 {
    margin-bottom: 1rem;
  }

  .project-entry {
    display: grid;
    grid-template-columns: minmax(7rem, 9rem) 1fr minmax(5rem, 7rem);
    align-items: center;
    gap: 1rem 1.5rem;
    padding: 1rem 0;
    border-top: 1px solid var(--global-divider-color);
  }

  .project-entry:last-child {
    border-bottom: 1px solid var(--global-divider-color);
  }

  .project-period {
    color: var(--global-text-color-light);
    font-size: 0.95rem;
    white-space: nowrap;
  }

  .project-title {
    margin-bottom: 0.35rem;
    font-weight: 600;
    font-size: 1rem;
    line-height: 1.35;
  }

  .project-meta {
    margin-bottom: 0.15rem;
    color: var(--global-text-color-light);
    font-size: 1rem;
    line-height: 1.45;
  }

  .project-meta strong {
    color: var(--global-text-color);
    font-weight: 600;
  }

  .project-logo {
    display: flex;
    justify-content: flex-end;
    align-items: center;
  }

  .project-logo img {
    display: block;
    max-width: 7.5rem;
    max-height: 4rem;
    object-fit: contain;
  }

  .project-logo img.logo-seal,
  .project-logo img.logo-emblem {
    max-width: 4.7rem;
    max-height: 4.7rem;
  }

  .project-logo img.logo-nrf {
    max-width: 7.5rem;
    max-height: 4rem;
  }

  @media (max-width: 575.98px) {
    .project-entry {
      grid-template-columns: 1fr;
      gap: 0.35rem;
    }

    .project-period {
      white-space: normal;
    }

    .project-logo {
      justify-content: flex-start;
    }
  }
</style>

<div class="project-list">
  <section class="project-section">
    <h2>Current Projects</h2>

    <div class="project-entry">
      <div class="project-period">2026-2028</div>
      <div>
        <div class="project-title">Engineering Nature 2.0 to boost the performance of existing built infrastructure in protecting people from water-related natural disasters</div>
        <div class="project-meta"><strong>Sponsor:</strong> U.S. Army Corps of Engineers</div>
        <div class="project-meta"><strong>Role:</strong> Research Scientist (PI: K.S. Candan, Arizona State University)</div>
      </div>
      <div class="project-logo">
        <img src="{{ '/assets/img/sponsors/usace-logo.svg' | relative_url }}" alt="U.S. Army Corps of Engineers logo">
      </div>
    </div>
  </section>

  <section class="project-section">
    <h2>Completed Projects</h2>

    <div class="project-entry">
      <div class="project-period">2024-2025</div>
      <div>
        <div class="project-title">Development of multisector scenarios to evaluate societal well-being and resilience</div>
        <div class="project-meta"><strong>Sponsor:</strong> <a href="https://www.nrf.re.kr/" rel="external nofollow noopener" target="_blank">National Research Foundation of Korea</a></div>
        <div class="project-meta"><strong>Program:</strong> Postdoctoral Fellowship Program (Nurturing Next-generation Researchers)</div>
        <div class="project-meta"><strong>Role:</strong> Principal Investigator (PI: <u>G.J. Kim</u>, Tufts University)</div>
        <div class="project-meta"><strong>Amount:</strong> $44,860</div>
      </div>
      <div class="project-logo">
        <img src="{{ '/assets/img/sponsors/NRF-e1656321180427-cropped.png' | relative_url }}" class="logo-nrf" alt="National Research Foundation of Korea logo">
      </div>
    </div>

    <div class="project-entry">
      <div class="project-period">2023-2025</div>
      <div>
        <div class="project-title">Global Change Intersectoral Modeling System (GCIMS)</div>
        <div class="project-meta"><strong>Sponsor:</strong> U.S. Department of Energy</div>
        <div class="project-meta"><strong>Program:</strong> Office of Science, Earth and Environmental Systems Modeling Program</div>
        <div class="project-meta"><strong>Role:</strong> Postdoctoral Researcher (PI: M. Wise, Pacific Northwest National Laboratory)</div>
        <div class="project-meta"><a href="https://gcims.pnnl.gov/" rel="external nofollow noopener" target="_blank">Project website</a></div>
      </div>
      <div class="project-logo">
        <img src="{{ '/assets/img/sponsors/doe-seal.svg' | relative_url }}" class="logo-seal" alt="U.S. Department of Energy logo">
      </div>
    </div>

    <div class="project-entry">
      <div class="project-period">2021-2022</div>
      <div>
        <div class="project-title">Relief of water shortage in western Chungcheongnam-do by regenerating inflow and improving water supply adjustment standards</div>
        <div class="project-meta"><strong>Sponsor:</strong> Korea Water Resources Corporation</div>
        <div class="project-meta"><strong>Role:</strong> Graduate Researcher (PI: Y.-O. Kim, Seoul National University)</div>
      </div>
      <div class="project-logo">
        <img src="{{ '/assets/img/sponsors/google-sites-sponsor-1.png' | relative_url }}" alt="K-water logo">
      </div>
    </div>

    <div class="project-entry">
      <div class="project-period">2020-2022</div>
      <div>
        <div class="project-title">Study in the assessment of drought response capability and improvement plan of coordinated dams-weirs operation for river systems</div>
        <div class="project-meta"><strong>Sponsor:</strong> Korea Water Resources Corporation</div>
        <div class="project-meta"><strong>Role:</strong> Graduate Researcher (PI: Y.-O. Kim, Seoul National University)</div>
      </div>
      <div class="project-logo">
        <img src="{{ '/assets/img/sponsors/google-sites-sponsor-1.png' | relative_url }}" alt="K-water logo">
      </div>
    </div>

    <div class="project-entry">
      <div class="project-period">2019-2020</div>
      <div>
        <div class="project-title">Development of Drought Information Producing Technology for the Public</div>
        <div class="project-meta"><strong>Sponsor:</strong> Korea Water Resources Corporation</div>
        <div class="project-meta"><strong>Role:</strong> Graduate Researcher (PI: Y.-O. Kim, Seoul National University)</div>
      </div>
      <div class="project-logo">
        <img src="{{ '/assets/img/sponsors/google-sites-sponsor-1.png' | relative_url }}" alt="K-water logo">
      </div>
    </div>

    <div class="project-entry">
      <div class="project-period">2017-2019</div>
      <div>
        <div class="project-title">Climate Change Adaptation for Water Resources (CCAWR)</div>
        <div class="project-meta"><strong>Sponsor:</strong> Ministry of Environment, Republic of Korea</div>
        <div class="project-meta"><strong>Role:</strong> Graduate Researcher (PI: D.-H. Bae, Sejong University)</div>
        <div class="project-meta"><a href="https://www.ccaw.re.kr/" rel="external nofollow noopener" target="_blank">Project website</a></div>
      </div>
      <div class="project-logo">
        <img src="{{ '/assets/img/sponsors/korea-moe-logo.svg' | relative_url }}" class="logo-emblem" alt="Ministry of Environment, Republic of Korea logo">
      </div>
    </div>
  </section>
</div>
