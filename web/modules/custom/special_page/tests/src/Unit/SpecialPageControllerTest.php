<?php

namespace Drupal\Tests\special_page\Unit;

use Drupal\special_page\Controller\SpecialController;
use Drupal\Tests\UnitTestCase;

class SpecialPageControllerTest extends UnitTestCase
{
  /**
   * Tests for the Special page module.
   * @group special_page
   */
  public function testSpecialPage()
  {
    $controller = new SpecialController();

    $output = $controller->page();
    $this->assertStringContainsString('Special custom page', $output['special']['#markup']);
  }
}


