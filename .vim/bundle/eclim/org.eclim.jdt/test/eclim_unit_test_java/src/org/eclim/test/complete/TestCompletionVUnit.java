package org.eclim.test.complete;

import java.util.ArrayList;

public class TestCompletionVUnit
{
  public void testAnother ()
  {
    List list = new ArrayList();
    list.a();
  }

  public void test ()
  {
    List list = new ArrayList();
    list.;
  }
}
