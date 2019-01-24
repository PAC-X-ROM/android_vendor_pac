# Add variables that we wish to make available to soong here.
EXPORT_TO_SOONG := \
    KERNEL_ARCH \
    KERNEL_CROSS_COMPILE \
    KERNEL_MAKE_FLAGS \
    TARGET_KERNEL_CONFIG \
    TARGET_KERNEL_SOURCE

# Setup SOONG_CONFIG_* vars to export the vars listed above.

SOONG_CONFIG_NAMESPACES += pacVarsPlugin

SOONG_CONFIG_pacVarsPlugin :=

define addVar
  SOONG_CONFIG_pacVarsPlugin += $(1)
  SOONG_CONFIG_pacVarsPlugin_$(1) := $$(subst ",\",$$($1))
endef

$(foreach v,$(EXPORT_TO_SOONG),$(eval $(call addVar,$(v))))
