# sonic-ctrmgrd package

SONIC_CTRMGRD = sonic_ctrmgrd-1.0.0-py3-none-any.whl
$(SONIC_CTRMGRD)_SRC_PATH = $(SRC_PATH)/sonic-ctrmgrd
$(SONIC_CTRMGRD)_FILES_PATH = $($(SONIC_CTRMGRD)_SRC_PATH)/ctrmgr

$(SONIC_CTRMGRD)_PYTHON_VERSION = 3
$(SONIC_CTRMGRD)_DEBS_DEPENDS += $(PYTHON3_SWSSCOMMON)
$(SONIC_CTRMGRD)_DEPENDS += $(SONIC_PY_COMMON_PY3)

$(SONIC_CTRMGRD)_CONTAINER_SCRIPT = container
$($(SONIC_CTRMGRD)_CONTAINER_SCRIPT)_PATH = $($(SONIC_CTRMGRD)_FILES_PATH)

$(SONIC_CTRMGRD)_STARTUP_SCRIPT = container_startup.py
$($(SONIC_CTRMGRD)_STARTUP_SCRIPT)_PATH = $($(SONIC_CTRMGRD)_FILES_PATH)

$(SONIC_CTRMGRD)_CFG_JSON = remote_ctr.config.json
$($(SONIC_CTRMGRD)_CFG_JSON)_PATH = $($(SONIC_CTRMGRD)_FILES_PATH)

$(SONIC_CTRMGRD)_SERVICE = ctrmgrd.service
$($(SONIC_CTRMGRD)_SERVICE)_PATH = $($(SONIC_CTRMGRD)_FILES_PATH)

$(SONIC_CTRMGRD)_HEALTH_PROBE = readiness_probe.sh
$($(SONIC_CTRMGRD)_HEALTH_PROBE)_PATH = $($(SONIC_CTRMGRD)_FILES_PATH)

SONIC_PYTHON_WHEELS += $(SONIC_CTRMGRD)

$(SONIC_CTRMGRD)_FILES = $($(SONIC_CTRMGRD)_CONTAINER_SCRIPT)
$(SONIC_CTRMGRD)_FILES += $($(SONIC_CTRMGRD)_STARTUP_SCRIPT)
$(SONIC_CTRMGRD)_FILES += $($(SONIC_CTRMGRD)_CFG_JSON)
$(SONIC_CTRMGRD)_FILES += $($(SONIC_CTRMGRD)_SERVICE)
$(SONIC_CTRMGRD)_FILES += $($(SONIC_CTRMGRD)_HEALTH_PROBE)

SONIC_COPY_FILES += $($(SONIC_CTRMGRD)_FILES)

