package com.mucheng.mucuteui.props;

public abstract class ScrollProps<CastProps extends ViewGroupProps<?>> extends ViewGroupProps<CastProps> {

  public Boolean fillViewport() {
    return fillViewport;
  }

  public CastProps fillViewport(Boolean fillViewport) {
    this.fillViewport = fillViewport;
    return (CastProps) this;
  }

  private Boolean fillViewport;

  public String fadingEdgeOrientation() {
    return fadingEdgeOrientation;
  }

  public CastProps fadingEdgeOrientation(String fadingEdgeOrientation) {
    this.fadingEdgeOrientation = fadingEdgeOrientation;
    return (CastProps) this;
  }

  private String fadingEdgeOrientation;

  public Integer fadingEdgeLength() {
    return fadingEdgeLength;
  }

  public CastProps fadingEdgeLength(Integer fadingEdgeLength) {
    this.fadingEdgeLength = fadingEdgeLength;
    return (CastProps) this;
  }

  private Integer fadingEdgeLength;

}
