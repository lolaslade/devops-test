<?php
namespace Drupal\special_page\Controller;

class SpecialController
{
    public function page(): array
    {
      $build['special'] = [
        '#type' => 'markup',
        '#markup' => 'Special custom page here.',
      ];

      return $build;
    }
}
